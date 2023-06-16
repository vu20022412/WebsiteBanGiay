package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.Cart;
import com.devpro.JavaWeb.dto.CartItem;
import com.devpro.JavaWeb.dto.Employee;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.model.SaleOrder;
import com.devpro.JavaWeb.model.SaleorderProducts;
import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.SaleOrderService;
import com.devpro.JavaWeb.services.impl.UserService;

@Controller
public class CartController extends BaseController {
	
	@Autowired
	private UserService userService;

	@Autowired
	private ProductService productService;

	@Autowired
	private SaleOrderService saleOrderService;

	@RequestMapping(value = { "/cart" }, method = RequestMethod.GET)
	public String cart(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {
		// trả về đường dẫn của cart
		return "customer/cart";
	}

	// tạo hóa đơn
	@RequestMapping(value = { "/cart" }, method = RequestMethod.POST)
	public String cartFinished(final Model model, final HttpServletRequest request, final HttpServletResponse response)
			throws IOException {

		// Lấy thông tin khách hàng
		String customerFullName = request.getParameter("customerFullName");
		String customerEmail = request.getParameter("customerEmail");
		String customerPhone = request.getParameter("customerPhone");
		String customerAddress = request.getParameter("customerAddress");
		String tongGiaGioHang = request.getParameter("tongGiaGioHang1");
		
		

		// tạo hóa đơn + với thông tin khách hàng lấy được
		SaleOrder saleOrder = new SaleOrder();
		saleOrder.setCustomer_name(customerFullName);
		saleOrder.setCustomer_email(customerEmail);
		saleOrder.setCustomer_address(customerAddress);
		saleOrder.setCustomer_phone(customerPhone);
		saleOrder.setTotal(new BigDecimal(tongGiaGioHang));
		saleOrder.setCode(String.valueOf(System.currentTimeMillis()));  // mã hóa đơn: HD20230314
		if(isLogined()) {
			saleOrder.setUser(getUserLogined());
		}

		// lấy giỏ hàng
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		
//		User user = (User) session.getAttribute("username");
//		saleOrder.setUser(user);
		//System.out.println(user);

		// lấy sản phẩm trong giỏ hàng
		List<SaleorderProducts> saleOrderProductsLst = new ArrayList<SaleorderProducts>();
		for (CartItem cartItem : cart.getCartItems()) {
			SaleorderProducts saleOrderProducts = new SaleorderProducts();
			saleOrderProducts.setProduct(productService.getById(cartItem.getProductId()));
			saleOrderProducts.setQuality(cartItem.getQuanlity());

			saleOrderProductsLst.add(saleOrderProducts);
		}

		// lưu hóa đơn vào database
		saleOrderService.createSaleOrder(saleOrder, saleOrderProductsLst);

		// thực hiện reset lại giỏ hàng của Session hiện tại
		session.setAttribute("cart", null);
		session.setAttribute("TongSoLuongSanPhamTrongGioHang", 0);

		return "redirect:/home"; // -> chuyen huong ve request-mapping /home
	}

	// thêm sản phẩm vào giỏ hàng
	@RequestMapping(value = { "/ajax/addToCart" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> ajax_AddToCart(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @RequestBody CartItem cartItem) {

		// để lấy session sử dụng thông qua request
		// session tương tự như kiểu Map và được lưu trên main memory.
		// mỗi trình duyệt sẽ có các session khác nhau
		HttpSession session = request.getSession();

		// Lấy thông tin giỏ hàng. Đầu tiên giả sử giỏ hàng là null(chưa có giỏ hàng)
		Cart cart = null;

		// kiểm tra xem session có tồn tại đối tượng nào tên là "cart"
		if (session.getAttribute("cart") != null) { // tồn tại 1 giỏ hàng trên session
			cart = (Cart) session.getAttribute("cart");
		} else {// chưa có giỏ hàng nào trên session
			cart = new Cart(); // khởi tạo giỏ hàng mới
			session.setAttribute("cart", cart);
		}

		// Lấy danh sách sản phẩm đang có trong giỏ hàng
		List<CartItem> cartItems = cart.getCartItems();

		// kiểm tra nếu sản phẩm muốn bổ sùng vào giỏ hàng có trong giỏ hàng nếu có thì
		// tăng số lượng
		boolean isExists = false;
		for (CartItem item : cartItems) {
			if (item.getProductId() == cartItem.getProductId()) {
				isExists = true;
				// tăng số lượng sản phẩm lên
				item.setQuanlity(item.getQuanlity() + cartItem.getQuanlity());
			}
		}

		// nếu sản phẩm chưa có trong giỏ hàng thì thực hiện add sản phẩm đó vào giỏ
		// hàng
		if (!isExists) {
			// trước khi thêm mới thì lấy sản phẩm trong db
			// và thiết lập tên + đơn giá cho cartitem
			Product productInDb = productService.getById(cartItem.getProductId());

			cartItem.setProductName(productInDb.getTitle());
			cartItem.setPriceUnit(productInDb.getPrice());
			cartItem.setAvatar(productInDb.getAvatar());

			cart.getCartItems().add(cartItem); // thêm mới sản phẩm vào giỏ hàng
		}
		
		//cart.setTotalPrice(null);
		// tính tổng tiền
//		this.calculateTotalPrice(request);

		// trả về kết quả
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("status", "success");
		jsonResult.put("totalItems", getTotalItems(request));

		// lưu totalItems vào session
		// tất cả các giá trị lưu trên session đều có thể truy cập được từ View
		session.setAttribute("TongSoLuongSanPhamTrongGioHang", getTotalItems(request));
		session.setAttribute("tongGiaTatCaSanPham", cart.tongTienGioHang());
		return ResponseEntity.ok(jsonResult);
	}

	// tổng số sản phẩm trong giỏ hàng
	private int getTotalItems(final HttpServletRequest request) {
		HttpSession httpSession = request.getSession();

		if (httpSession.getAttribute("cart") == null) {
			return 0;
		}

		Cart cart = (Cart) httpSession.getAttribute("cart");
		List<CartItem> cartItems = cart.getCartItems();

		int total = 0;
		for (CartItem item : cartItems) {
			total += item.getQuanlity();
		}

		return total;
	}

	// xóa sản phẩm trong giỏ hàng
	@RequestMapping(value = { "/cart/delete/{productId}" }, method = RequestMethod.GET)
	public String cartDelete(final Model model, final HttpServletRequest request, final HttpServletResponse response,
			@PathVariable("productId") int productId) throws IOException {
		// lấy giỏ hàng
		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		for (CartItem item : cart.getCartItems()) {
			if (item.getProductId() == productId) {
				cart.getCartItems().remove(item);
				break;
			}
		}
		session.setAttribute("tongGiaTatCaSanPham", cart.tongTienGioHang());
		// trả về đường dẫn của cart
		return "redirect:/cart";
	}
	
	// xóa sản phẩm trong giỏ hàng
	/*
	 * @RequestMapping(value = { "/cart/delete" }, method = RequestMethod.DELETE)
	 * public String cartDelete1(final Model model, final HttpServletRequest
	 * request, final HttpServletResponse response, final @RequestBody CartItem
	 * cartItem) throws IOException { // lấy giỏ hàng HttpSession session =
	 * request.getSession(); Cart cart = (Cart) session.getAttribute("cart"); for
	 * (CartItem item : cart.getCartItems()) { if (item.getProductId() ==
	 * cartItem.getProductId()) { cart.getCartItems().remove(item); break; } } //
	 * trả về đường dẫn của cart return "redirect:/cart"; }
	 */
	

	// bấm nút cộng or trừ số lượng của 1 sản phẩm trong giỏ hàng
	@RequestMapping(value = { "/cart/increaseOrDecrease" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> increase1(final Model model, final HttpServletRequest request,
			final HttpServletResponse response, final @RequestBody CartItem cartItem) {

		HttpSession session = request.getSession();
		Cart cart = (Cart) session.getAttribute("cart");
		CartItem temp = null;
		double sum = 0;
		for (CartItem item : cart.getCartItems()) {
			if (item.getProductId() == cartItem.getProductId() && cartItem.getIncreaseOrDecrease().equals("increase")) {
				item.setQuanlity(item.getQuanlity() + 1);
				temp = item;
			}else if(item.getProductId() == cartItem.getProductId() && cartItem.getIncreaseOrDecrease().equals("decrease")) {
				if(item.getQuanlity()>1) {
					item.setQuanlity(item.getQuanlity() - 1);	
				}
				temp = item;
			}
		}
//		for (CartItem item : cart.getCartItems()) {
//			sum+= item.tongGia1();
//		}
		// cartItem.setQuanlity(cartItem.getQuanlity()+1); // tính tổng tiền //
		// this.calculateTotalPrice(request);
		// trả về kết quả
		//String jsonResult1 = "" + temp.getQuanlity();
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("soluong", "" + temp.getQuanlity());
		jsonResult.put("tongGia", temp.tongGia());
		jsonResult.put("tongGiaTatCaSanPham", cart.tongTienGioHang());
		jsonResult.put("totalItems", getTotalItems(request));
		
		//session.setAttribute("tongGiaTatCaSanPham", cart.tongTienGioHang());

		return ResponseEntity.ok(jsonResult);
	}
	 
}

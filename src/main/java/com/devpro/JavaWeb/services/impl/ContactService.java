package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class ContactService extends BaseService<Contact>{

	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}
	
	
	@Transactional
	public Contact deleteContact(int contactId) {
		String sql = "DELETE FROM tbl_contact WHERE id = " + contactId + ";";
		Contact old = super.getById(contactId);
		super.deleteById(contactId);
		return old;
//		super.deleteById(productId);
				
	}
}

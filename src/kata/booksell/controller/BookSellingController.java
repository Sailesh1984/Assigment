package kata.booksell.controller;

import java.util.List;

import kata.booksell.model.BillingForm;
import kata.booksell.model.Book;
import kata.booksell.model.BookForm;
import kata.booksell.service.BookService;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookSellingController {

	BookService service = new BookService();

	@RequestMapping(value="/", method = RequestMethod.GET)
	public ModelAndView home() {
		ModelAndView model = new ModelAndView("BooksDetails");
		List<Book> bookList = service.getooksInfo();
		BookForm bookForm = new BookForm();
		bookForm.setBooks(bookList);
		model.addObject("bookForm", bookForm);
		return new ModelAndView("BooksDetails" , "bookForm", bookForm);
	}
	
	@RequestMapping(value="/billing", method = RequestMethod.POST)
	public ModelAndView bookBilling(@ModelAttribute("SpringWeb") BookForm bookForm) {
		BillingForm billingForm = service.getBillingInfo(bookForm);
		ModelAndView model = new ModelAndView("billing");
		model.addObject("billingForm", billingForm);
		return model;
	}
}

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import controller.ListDetailsHelper;
import controller.ShopperHelper;
import model.ListDetails;
import model.ListItem;
import model.Shopper;

public class ShoppingTester {


	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Shopper alfonzo = new Shopper("Alfonzo");
		ListDetailsHelper ldh = new ListDetailsHelper();

		// Stings of MAKER, MODEL, CATEGORY
		ListItem paniniPress = new ListItem("Delonghi", "Livenza Compact SW-12", "Panini Press");
		ListItem paniniGrill= new ListItem("Delonghi", "Livenza SW-12 Panini Plates", "Panini Replacement Plates");

		List<ListItem> alfonzosItems = new ArrayList<ListItem>();
		alfonzosItems.add(paniniPress);
		alfonzosItems.add(paniniGrill);

		ListDetails alfonzosList = new ListDetails("Alfonzo's Shopping List", LocalDate.now(), alfonzo);
		alfonzosList.setListOfItems(alfonzosItems);

		ldh.insertNewListDetails(alfonzosList);

		List<ListDetails> allLists = ldh.getLists();
		for(ListDetails a: allLists) {
			System.out.println(a.toString());
		}
	}

}

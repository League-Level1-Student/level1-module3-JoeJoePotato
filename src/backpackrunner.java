
public class backpackrunner {
public static void main(String[] args) {
	Backpack b=new Backpack();
	Pencil p=new Pencil();
	b.putInBackpack(p);
	Ruler r=new Ruler();
	b.putInBackpack(r);
	Textbook t=new Textbook();
	b.putInBackpack(t);
	b.goToSchool();
}
}

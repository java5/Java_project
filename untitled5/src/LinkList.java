import java.util.Scanner;
public class LinkList {
    private Node head;

        public LinkList(){
            head=new Node();
    }

    public LinkList(int n)throws Exception{
            this();
            create(n);
    }

    public void create(int n) throws Exception{
            Scanner sc=new Scanner(System.in);
            for(int i=0;i<n+1;i++){
                System.out.print("请输入单链表第"+i+"个元素值:");
                insert(i,sc.nextInt());
            }
    }
    public void insert(int i,int data) throws Exception{
        Node s = head;
        int j = -1;
        while(j<i-1&&s!=null){
            ++j;
            s=s.getNext();
        }
        if(j>i-1 || s==null){
            throw new Exception("插入位置不合法!!!");
        }
        Node v=new Node(data);
        //v.setNext(s.getNext());
        s.steNext(v);
    }
    public void display() {
            Node s=head.getNext();

        while(s!=null){
            System.out.println(s.getData()+",");
            s=s.getNext();
    }
        System.out.println();
        }

    public static void mian(String args[])throws Exception {

        Scanner sc = new Scanner(System.in);
        System.out.print("请输入表长!!!");
        int i = sc.nextInt();
        LinkList aa = new LinkList(i);
        aa.display();
    }
}

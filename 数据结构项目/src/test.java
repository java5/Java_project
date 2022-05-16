public class test {
        public static void main(String args[])throws Exception {
            SequenceList t = new SequenceList(10);
            t.append(10);
            t.append(20);
            System.out.println(t);
            System.out.println("");
            t.insterFirst(30);
            t.insterFirst(15);
            System.out.println(t);
            System.out.println("");
        }
    }

        public class SequenceList {
        private int table[];
        private int size;

        public SequenceList(int capacity) {
            this.table = new int[capacity];
            this.size = 0;
        }

        public SequenceList() {
            this(10);
        }

        public void append(int value) throws Exception {
            if (size > table.length - 1) {
                throw new Exception("超出异常");
            }
            table[size] = value;
            size++;
        }

        public void insterFirst(int value) throws Exception {
            if (size > table.length - 1) {
                throw new Exception("超出异常");
            }
            for (int i = size - 1; i >= 0; i--) {
                table[i+1] = table[i];
            }
            table[0] = value;
            size++;
        }

        @Override
        public String toString() {
            StringBuilder resule = new StringBuilder();
            for (int i = 0; i < size; i++) {
                resule.append(table[i]);
                resule.append(" ");
            }
            return resule.toString();
        }
    }


package analyzerpack;

// ���� Ŭ����
public class Lemma {
	
	String text;	// ���� ����
	Pos pos;		// ���� ǰ��
	
	// ������
	public Lemma(String Text, Pos Partos) {
		text = Text;
		pos = Partos;
	}
	
	// ���� ����
	public String getText() {
		return text;
	}
	
	// ǰ�� ����
	public Pos getPos() {
		return pos;
	}
}

package analyzerpack;
import java.util.ArrayList;

public class Sentence {
	
	ArrayList<Word> word;		// ���� ����Ʈ
	ArrayList<Keyword> keyword;	// ����� Ű���� ����Ʈ
	String text;				// ����ڰ� �Է��� ����
	int numKeyword;				// Ű���� ��ȣ
	
	// ������
	public Sentence(String text) {
		text = this.text;
		word = new ArrayList<Word>();
		keyword = new ArrayList<Keyword>();
		numKeyword = 0;
	}
	
	// Ű���� ����
	public void SetKeyword(ArrayList<Keyword> k) {
		keyword = k;
	}
	
	// ����Ʈ�� ���� �߰� (����ڰ� �Է��� ����, �м��� ���� ��� ����)
	public void addWord(String nativeText, String analysedText, int NumKeyword) {
		Word newWord = new Word(nativeText, analysedText, keyword, NumKeyword);
		numKeyword = newWord.getKeyword();
		word.add(newWord);
	}
	
	// ���� ��ü ����
	public String getText() {
		return text;
	}
	
	// ���� ��ü ����
	public ArrayList<Word> getWord() {
		return word;
	}
	
	// ���� ����. �ϳ���
	public Word getWord(int count) {
		return word.get(count);
	}
	
	public int GetKeyword() {
		return numKeyword;
	}
}
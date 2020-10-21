package ex1021.hw;

public class BoardDTO {
	private String id;
	private String content;
	private String time;
	
	public BoardDTO() {}

	public BoardDTO(String id, String content, String time) {
		super();
		this.id = id;
		this.content = content;
		this.time = time;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	
}
	
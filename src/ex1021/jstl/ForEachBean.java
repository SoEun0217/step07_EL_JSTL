package ex1021.jstl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ex1021.dto.Member;

public class ForEachBean {
	private String names [] = {"소은","은경","수현","현민","현빈","량훈","지현"};
	private List<String> menus=Arrays.asList("짜장","짬뽕","탕수육","쌀국수","햄버거","쌀국수");
	
	private List<Member> memberList=new ArrayList<>();
	private Map<String, String> map= new HashMap<>();
	
	public ForEachBean() {
		//memberList와 map을 초기화하자
		memberList.add(new Member("jang","장희정",20,"판교"));
		memberList.add(new Member("kim","김소은",24,"서울"));
		memberList.add(new Member("lin","임지은",23,"판교"));
		memberList.add(new Member("kang","강동원",40,"부산"));
		memberList.add(new Member("hi","안녕",10,"대전"));
		memberList.add(new Member("hong","홍자영",24,"강동"));
		
		map.put("kr", "대한민국");
		map.put("uk", "영국");
		map.put("us", "미국");
		map.put("fr", "프랑스");
		
	}

	public String[] getNames() {//jsp에서 표현언어 ${변수이름.names}
		return names;
	}

	public List<String> getMenus() {//${변수이름.menus}
		return menus;
	}

	public List<Member> getMemberList() {//${변수이름.memberList}
		return memberList;
	}

	public Map<String, String> getMap() {//${변수이름.map}
		return map;
	}
	
	
}

package ex1021.jstl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import ex1021.dto.Member;

public class ForEachBean {
	private String names [] = {"����","����","����","����","����","����","����"};
	private List<String> menus=Arrays.asList("¥��","«��","������","�ұ���","�ܹ���","�ұ���");
	
	private List<Member> memberList=new ArrayList<>();
	private Map<String, String> map= new HashMap<>();
	
	public ForEachBean() {
		//memberList�� map�� �ʱ�ȭ����
		memberList.add(new Member("jang","������",20,"�Ǳ�"));
		memberList.add(new Member("kim","�����",24,"����"));
		memberList.add(new Member("lin","������",23,"�Ǳ�"));
		memberList.add(new Member("kang","������",40,"�λ�"));
		memberList.add(new Member("hi","�ȳ�",10,"����"));
		memberList.add(new Member("hong","ȫ�ڿ�",24,"����"));
		
		map.put("kr", "���ѹα�");
		map.put("uk", "����");
		map.put("us", "�̱�");
		map.put("fr", "������");
		
	}

	public String[] getNames() {//jsp���� ǥ����� ${�����̸�.names}
		return names;
	}

	public List<String> getMenus() {//${�����̸�.menus}
		return menus;
	}

	public List<Member> getMemberList() {//${�����̸�.memberList}
		return memberList;
	}

	public Map<String, String> getMap() {//${�����̸�.map}
		return map;
	}
	
	
}

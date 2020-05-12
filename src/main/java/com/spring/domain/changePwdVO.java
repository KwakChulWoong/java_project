package com.spring.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class changePwdVO {
	private String userid;
	private String current_password; //���� �н�����
	private String new_password;
	private String confirm_password;
	
	public boolean newPasswordEqualsConfirm() {
		return new_password.equals(confirm_password);
	}
}

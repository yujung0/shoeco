package com.shoeco.shoeco.common.fileUpload.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
public class RevAttachFileDTO {
	
	private String revAttachUuid;
	private long revNo;
	private String revUploadPath ="C:/shoeceUploadRev";
	private String revFileName;
	private String revFileType;	//default 'F'
	
	

	
}

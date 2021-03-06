package com.zcnation.zc.service;

import java.util.List;

import com.zcnation.zc.domain.ZcOrderDetail;




public interface ZcOrderDetailNativeService {
	public int updateZcOrderDetail(Integer proNumber,Integer detId);
	public List<ZcOrderDetail> queryByUserCodeAndOrderCodeIsNull(Integer userCode);
	public void updateOrderCodeByUserCodeAndOrderCodeIsNull(Integer userCode,Integer orderCode);
	
	public List<ZcOrderDetail> queryByUserCodeAndOCodes(Integer userCode,Integer ocodes);
}

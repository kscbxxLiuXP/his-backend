package com.liuxp.his.Service;

import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.Invoice;

public interface InvoiceService {
    //自动获取下一个发票号，同时要返回
    public JsonResult getInvoiceNumber();

    public JsonResult addInvoice(Invoice invoice);
}

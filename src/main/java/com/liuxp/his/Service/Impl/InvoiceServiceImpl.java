package com.liuxp.his.Service.Impl;

import com.liuxp.his.Dao.InvoiceDao;
import com.liuxp.his.Model.JsonResult;
import com.liuxp.his.PO.Invoice;
import com.liuxp.his.Service.InvoiceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InvoiceServiceImpl implements InvoiceService {
    @Autowired
    private InvoiceDao invoiceDao;

    @Override
    public JsonResult getInvoiceNumber() {
        int invoiceNumber = (int) (invoiceDao.getLastInvoiceNumber()+1);
        return new JsonResult().code("0").msg("success").data(invoiceNumber);
    }

    @Override
    public JsonResult addInvoice(Invoice invoice) {
        invoiceDao.addOne(invoice);
        return null;
    }
}

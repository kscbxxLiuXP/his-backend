package com.liuxp.his.Dao;

import com.liuxp.his.PO.Invoice;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface InvoiceDao {
    public Invoice getOne(int id);

    public List<Invoice> getByRegisterID(int registerID);

    //获取最后一位发票号
    public int getLastInvoiceNumber();

    public void addOne(Invoice invoice);

    //获取下一位发票ID
    public int getLastInvoiceID();
}

%dw 2.0
var omsToOdataOutputMapping = {
    "CUSTOMER_ID" : "customerId",
    "FILE_DATE" : "filedDate",
    "ORDER_END_DATE" : "orderendDate",
    "ORDER_NUMBER" : "orderNo",
    "ORDER_START_DATE" : "orderstartDate",
    "ORIGINAL_ORDER" : "originalOrder",
    "PROMISE_DATE" : "promiseDate",
    "SALES_ORDER_ID" : "saleorderId",
    "SALES_ORDER_STATUS" : "saleorderStatus",
    "SALES_ORDER_TYPE" : "saleorderType"
}
var fieldsToShow = if(isBlank(vars.select)) vars.odata.fields else ((vars.select splitBy  ",") ++ (vars.odata.keyNames splitBy  ",")) distinctBy (value) -> { "unique" : value }
output application/json
---
/**
 * Maps OMS Order record to OData output format
 * @table OData,OMS,Description
 * @row CUSTOMER_ID,customerId,Unique customer identification number
 * @row FILE_DATE,filedDate,Date the order was filed
 * @row ORDER_END_DATE,orderendDate,Date at which the order ends. For subscription-type orders\\, this would be the date when the subscription ends
 * @row ORDER_NUMBER,orderNo,Unique number assigned to this order and displayed to end users
 * @row ORDER_START_DATE,orderstartDate,Date at which the order becomes effective. For subscription-type orders\\, this would be the date when the subscription begins
 * @row ORIGINAL_ORDER,originalOrder,Reference to the parent order. Needed for reship\\, exchange and even swap orders
 * @row PROMISE_DATE,promiseDate,Date the promise of the order would be fulfilled
 * @row SALES_ORDER_ID,saleorderId,Unique Sale order number
 * @row SALES_ORDER_STATUS,saleorderStatus,Current order status e.g Draft\\, Read for Review\\, Placed\\, Read for Activation\\, Activated
 * @row SALES_ORDER_TYPE,saleorderType,The type of order. Change\\, Renewal or Amendment
 */
"entries" : payload map ((parent, parentIndex) -> {
    (
        fieldsToShow map ((item, index) -> {
            "$(item)": parent."$(omsToOdataOutputMapping."$(item)")"
        })
    )
})
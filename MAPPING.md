# build-orders-reponse

## Mapping Tables

Maps OMS Order record to OData output format 

> | OData | OMS | Description | 
> | ---- |---- |---- |
> | CUSTOMER_ID | customerId | Unique customer identification number | 
> | FILE_DATE | filedDate | Date the order was filed | 
> | ORDER_END_DATE | orderendDate | Date at which the order ends. For subscription-type orders, this would be the date when the subscription ends | 
> | ORDER_NUMBER | orderNo | Unique number assigned to this order and displayed to end users | 
> | ORDER_START_DATE | orderstartDate | Date at which the order becomes effective. For subscription-type orders, this would be the date when the subscription begins | 
> | ORIGINAL_ORDER | originalOrder | Reference to the parent order. Needed for reship, exchange and even swap orders | 
> | PROMISE_DATE | promiseDate | Date the promise of the order would be fulfilled | 
> | SALES_ORDER_ID | saleorderId | Unique Sale order number | 
> | SALES_ORDER_STATUS | saleorderStatus | Current order status e.g Draft, Read for Review, Placed, Read for Activation, Activated | 
> | SALES_ORDER_TYPE | saleorderType | The type of order. Change, Renewal or Amendment | 



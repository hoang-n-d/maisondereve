using BussinessObject;

namespace Service.Interface
{
    public interface IQuotationService
    {

        public Quotation GetQuotationUser(int userID);

        public Quotation AddQuotation(Quotation quotation);

        public void AddQuotationDetail(QuotationDetail detail);

        public QuotationDetail GetQuotationDetail(int id, int productID);

        public void UpdateQuotationDetail(QuotationDetail detail);

        public List<QuotationDetail> GetCart(int user_id);

        public void RemoveQuotationDetail(int id);

        public QuotationDetail GetQuotationDetail(int id);

        public void AddOrder(Order o, List<QuotationDetail> list);
        public void CancelOrder(int id);

        public void ApproveOrder(int id);
        public void ChangeOrderStatus(int id, int status);
        public Order GetOrder(int id);

        public void RemoveQuotation(int userID);

        public List<Order> GetAllOrder(int user_id);

        public List<OrderDetail> GetAllOrderDetail(int id);


        public List<TypeHouse> GetAllTypeHouse();

        public List<CeilingHouse> GetAllCeil();

        public List<Background> GetAllBackground();

        public List<Wall> GetAllWall();

        public List<Order> GetAllOrderAdmin();

        public OrderStatiscal OrderStatiscal();
    }
}

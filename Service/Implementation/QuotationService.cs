﻿using BussinessObject;
using Repository.Implementation;
using Repository.Interface;
using Service.Interface;

namespace Service.Implementation
{
    public class QuotationService : IQuotationService
    {
        private IQuotationRepository _repository;
        public QuotationService()
        {
            _repository = new QuotationRepository();
        }

        public Quotation AddQuotation(Quotation quotation)
        {
            return _repository.AddQuotation(quotation);
        }

        public void AddQuotationDetail(QuotationDetail detail)
        {
            _repository.AddQuotationDetail(detail);
        }

        public Quotation GetQuotationUser(int userID)
        {
            return _repository.GetQuotationUser(userID);
        }

        public QuotationDetail GetQuotationDetail(int id, int productID)
        {
            return _repository.GetQuotationDetail(id, productID);
        }

        public void UpdateQuotationDetail(QuotationDetail detail)
        {
            _repository.UpdateQuotationDetail(detail);
        }

        public List<QuotationDetail> GetCart(int user_id)
        {
            return _repository.GetCart(user_id);
        }

        public void RemoveQuotationDetail(int id)
        {
            _repository.RemoveQuotationDetail(id);
        }

        public QuotationDetail GetQuotationDetail(int id)
        {
            return _repository.GetQuotationDetail(id);
        }

        public void AddOrder(Order o, List<QuotationDetail> list)
        {
            _repository.AddOrder(o, list);
        }

        public void RemoveQuotation(int userID)
        {
            _repository.RemoveQuotation(userID);
        }
        public List<Order> GetAllOrder(int user_id)
        {
            return _repository.GetAllOrder(user_id);
        }

        public List<OrderDetail> GetAllOrderDetail(int id)
        {
            return _repository.GetAllOrderDetail(id);
        }

        public List<TypeHouse> GetAllTypeHouse()
        {
            return _repository.GetAllTypeHouse();
        }

        public List<CeilingHouse> GetAllCeil()
        {
            return _repository.GetAllCeil();
        }

        public List<Background> GetAllBackground()
        {
            return _repository.GetAllBackground();
        }

        public List<Wall> GetAllWall()
        {
            return _repository.GetAllWall();
        }

        public Order GetOrder(int id)
        {
            return _repository.GetOrder(id);
        }

        public List<Order> GetAllOrderAdmin()
        {
            return _repository.GetAllOrderAdmin();
        }

        public void CancelOrder(int id)
        {
            _repository.CancelOrder(id);
        }

        public void ApproveOrder(int id)
        {
            _repository.ApproveOrder(id);
        }

        public void ChangeOrderStatus(int id, int status)
        {
            _repository.ChangeOrderStatus(id, status);
        }

        public OrderStatiscal OrderStatiscal()
        {
            return _repository.OrderStatiscal();
        }
    }
}

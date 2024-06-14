using BussinessObject.Enum;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BussinessObject
{
    public class OrderStatus
    {
        public EnumOrderStatus Status { get; set; }
    }

    public class OrderStatusCount
    {
        public int Status { get; set; }
        public int Count { get; set; }
    }

    public class OrderStatiscal
    {
        public List<OrderStatusCount> OrderStatusCount { get; set; }
        public int Total { get; set; }
    }
}

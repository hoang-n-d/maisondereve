﻿namespace BussinessObject
{
    public partial class Background
    {
        public Background()
        {
            Orders = new HashSet<Order>();
        }

        public int Id { get; set; }
        public string? Name { get; set; }
        public int? PricePerSquare { get; set; }

        public virtual ICollection<Order> Orders { get; set; }
    }
}

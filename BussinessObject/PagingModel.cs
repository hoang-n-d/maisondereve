namespace BussinessObject
{
    public class PagingModel<T>
    {
        public IEnumerable<T> List { get; set; } = default!;
        public int TotalItems { get; set; }
        public int ItemsPerPage { get; set; }
        public int CurrentPage { get; set; }
        public int TotalPages
        {
            get { return (int)Math.Ceiling((decimal)TotalItems / ItemsPerPage); }
        }
    }
}

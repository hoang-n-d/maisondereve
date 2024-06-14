using BussinessObject;

namespace Service.Interface
{
    public interface IStyleService
    {
        public IEnumerable<Style> List();

        Style Get(int id);

        public void Add(Style style);


        public void Update(Style style);

        List<Style> ListAdmin();
    }
}

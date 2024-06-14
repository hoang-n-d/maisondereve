using BussinessObject;

namespace Repository.Interface
{
    public interface IStyleRepository
    {
        public List<Style> List();


        public Style Get(int id);

        void Add(Style style);
        void Update(Style style);

        public List<Style> ListAdmin();
    }
}

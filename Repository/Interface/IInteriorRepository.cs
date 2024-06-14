using BussinessObject;

namespace Repository.Interface
{
    public interface IInteriorRepository
    {
        List<Interior> List();
        void Add(Interior interior);
        void Update(Interior interior);
        void Delete(int id);
        List<Category> ListCategory();

        List<Interior> ListByCate(int? cate_id);

        Interior Get(int id);

        List<Interior> ListAdmin();
    }
}

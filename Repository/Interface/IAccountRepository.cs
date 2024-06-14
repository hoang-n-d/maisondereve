using BussinessObject;

namespace Repository.Interface
{
    public interface IAccountRepository
    {
        Account getByNameAndPass(string username, string password);

        Account getByName(string username);

        Account GetByID(int id);

        Account Get(int id);

        void Add(Account account);
        void Update(Account account);

        List<Account> ListAdmin();
    }
}

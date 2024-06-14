using BussinessObject;
using DAO;
using Repository.Interface;

namespace Repository.Implementation
{
    public class AccountRepository : IAccountRepository
    {
        public Account getByNameAndPass(string username, string password) => AccountDAO.Instance.GetByNameAndPassword(username, password);

        public Account getByName(string username) => AccountDAO.Instance.GetByName(username);

        public Account GetByID(int id) => AccountDAO.Instance.GetByID(id);

        public Account Get(int id) => AccountDAO.Instance.Get(id);

        public List<Account> ListAdmin() => AccountDAO.Instance.ListAdmin();

        public void Add(Account account) => AccountDAO.Instance.Add(account);


        public void Update(Account account) => AccountDAO.Instance.Update(account);
    }
}

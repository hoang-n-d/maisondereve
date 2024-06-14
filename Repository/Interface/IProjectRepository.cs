using BussinessObject;

namespace Repository.Interface
{
    public interface IProjectRepository
    {
        public List<Project> List();


        public Project Get(int id);

        void Add(Project project);
        void Update(Project project);

        public List<Project> ListAdmin();
    }
}

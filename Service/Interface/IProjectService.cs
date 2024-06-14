using BussinessObject;

namespace Service.Interface
{
    public interface IProjectService
    {
        public IEnumerable<Project> List();

        Project Get(int id);

        public void Add(Project project);


        public void Update(Project project);

        List<Project> ListAdmin();
    }
}

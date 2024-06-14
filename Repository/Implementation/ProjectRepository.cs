using BussinessObject;
using DAO;
using Repository.Interface;

namespace Repository.Implementation
{
    public class ProjectRepository : IProjectRepository
    {
        public Project Get(int id) => ProjectDAO.Instance.Get(id);

        public List<Project> List() => ProjectDAO.Instance.List();

        public List<Project> ListAdmin() => ProjectDAO.Instance.ListAdmin();

        public void Add(Project project) => ProjectDAO.Instance.Add(project);


        public void Update(Project project) => ProjectDAO.Instance.Update(project);
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VRSMS.Api.Models.Interfaces
{
    public interface IServiceRequestModel 
    {
        IEnumerable<ServiceRequestEntityPlaceholder> GetAllServiceRequests();

        ServiceRequestEntityPlaceholder GetServiceRequestById(int id);

        void CreateServiceRequest(ServiceRequestEntityPlaceholder value);

        void UpdateServiceRequest(int id, ServiceRequestEntityPlaceholder value);
    }
}

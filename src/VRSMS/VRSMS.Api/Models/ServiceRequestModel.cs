using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using VRSMS.Api.Models.Interfaces;

namespace VRSMS.Api.Models
{
    public class ServiceRequestModel : IServiceRequestModel
    {
        
        public IEnumerable<ServiceRequestEntityPlaceholder> GetAllServiceRequests()
        {
            throw new NotImplementedException();
        }

        public ServiceRequestEntityPlaceholder GetServiceRequestById(int id)
        {
            throw new NotImplementedException();
        }

        public void CreateServiceRequest(ServiceRequestEntityPlaceholder value)
        {
            throw new NotImplementedException();
        }

        public void UpdateServiceRequest(int id, ServiceRequestEntityPlaceholder value)
        {
            throw new NotImplementedException();
        }
    }
}
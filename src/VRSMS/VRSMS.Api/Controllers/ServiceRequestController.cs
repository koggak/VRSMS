using Ninject;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using VRSMS.Api.Models;
using VRSMS.Api.Models.Interfaces;

namespace VRSMS.Api.Controllers
{
    
    public class ServiceRequestController : ApiController
    {
        readonly IServiceRequestModel service = null;

        [Inject]
        public ServiceRequestController(IServiceRequestModel service)
        {
            this.service = service;
        }

        // GET api/<controller>
        public IEnumerable<ServiceRequestEntityPlaceholder> Get()
        {
            return service.GetAllServiceRequests();
        }

        // GET api/<controller>/5
        public ServiceRequestEntityPlaceholder Get(int id)
        {
            return service.GetServiceRequestById(id);
        }

        // POST api/<controller>
        public void Post([FromBody]ServiceRequestEntityPlaceholder value)
        {
            service.CreateServiceRequest(value);
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]ServiceRequestEntityPlaceholder value)
        {
            service.UpdateServiceRequest(id, value);
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ecommerce.Models
{
    public class User
    {
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Username { get; set; }
        public string Mobile { get; set; }
        public string Email { get; set; }
        public string Address { get; set; }
        public string PostCode { get; set; }
        public string Password { get; set; }
        public string ImageUrl { get; set; }
        public int RoleId { get; set; }
        public DateTime CreatedDate { get; set; }
    }

}
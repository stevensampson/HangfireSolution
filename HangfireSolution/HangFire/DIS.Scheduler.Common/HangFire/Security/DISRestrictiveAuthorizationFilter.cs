// ***********************************************************************
// Assembly         : DIS.Scheduler.Common
// Author           : skumar2
// Created          : 06-11-2015
//
// Last Modified By : skumar2
// Last Modified On : 06-11-2015
// ***********************************************************************
// <copyright file="DISRestrictiveAuthorizationFilter.cs" company="CDI Corporation">
//     Copyright © CDI Corporation 2015
// </copyright>
// <summary></summary>
// ***********************************************************************
using System;
using System.Collections.Generic;
using System.Linq;
using Hangfire.Dashboard;
using Microsoft.Owin;
using DIS.Core.Infrastructure.RBAC;
using DIS.Core.Entity.Contexts.Models;

namespace DIS.Scheduler.Common.Hangfire.Security
{
    /// <summary>
    /// Class DISRestrictiveAuthorizationFilter.
    /// </summary>
    public class DISRestrictiveAuthorizationFilter : IAuthorizationFilter
    {
        /// <summary>
        /// Gets or sets the project identifier.
        /// </summary>
        /// <value>The project identifier.</value>
        private int ProjectId { get; set; }
        /// <summary>
        /// The empty array
        /// </summary>
        private static readonly string[] EmptyArray = new string[0];

        /// <summary>
        /// The _roles
        /// </summary>
        private string _roles;
        /// <summary>
        /// The _roles split
        /// </summary>
        private string[] _rolesSplit = EmptyArray;
        /// <summary>
        /// The _users
        /// </summary>
        private string _users;
        /// <summary>
        /// The _users split
        /// </summary>
        private string[] _usersSplit = EmptyArray;

        /// <summary>
        /// Gets or sets the authorized roles.
        /// </summary>
        /// <value>The roles string.</value>
        /// <remarks>Multiple role names can be specified using the comma character as a separator.</remarks>
        public string Roles
        {
            get { return _roles ?? String.Empty; }
            set
            {
                _roles = value;
                _rolesSplit = SplitString(value);
            }
        }

        /// <summary>
        /// Gets or sets the authorized users.
        /// </summary>
        /// <value>The users string.</value>
        /// <remarks>Multiple role names can be specified using the comma character as a separator.</remarks>
        public string Users
        {
            get { return _users ?? String.Empty; }
            set
            {
                _users = value;
                _usersSplit = SplitString(value);
            }
        }

        /// <summary>
        /// Initializes a new instance of the <see cref="DISRestrictiveAuthorizationFilter"/> class.
        /// </summary>
        public DISRestrictiveAuthorizationFilter()
        {
            this.ProjectId = Configure.Project.ProjectId;
        }
        /// <summary>
        /// Initializes a new instance of the <see cref="DISRestrictiveAuthorizationFilter"/> class.
        /// </summary>
        /// <param name="AuthorizeRole">The authorize role.</param>
        public DISRestrictiveAuthorizationFilter(string AuthorizeRole)
        {
            Roles = AuthorizeRole;
        }

        /// <summary>
        /// Authorizes the specified owin environment.
        /// </summary>
        /// <param name="owinEnvironment">The owin environment.</param>
        /// <returns><c>true</c> if XXXX, <c>false</c> otherwise.</returns>
        public bool Authorize(IDictionary<string, object> owinEnvironment)
        {
            // In case you need an OWIN context, use the next line.
            var context = new OwinContext(owinEnvironment);

            DISRoleProvider RoleProvider = new DISRoleProvider(context);
            DISUser user = RoleProvider.DISUSER;

            if (user.IsAuthenticated)
            {
                if (user.Roles.Contains(Roles))
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }

        }

        /// <summary>
        /// Splits the string on commas and removes any leading/trailing whitespace from each result item.
        /// </summary>
        /// <param name="original">The input string.</param>
        /// <returns>An array of strings parsed from the input <paramref name="original" /> string.</returns>
        private static string[] SplitString(string original)
        {
            if (String.IsNullOrEmpty(original))
            {
                return EmptyArray;
            }

            var split = from piece in original.Split(',')
                        let trimmed = piece.Trim()
                        where !String.IsNullOrEmpty(trimmed)
                        select trimmed;
            return split.ToArray();
        }

    }
}

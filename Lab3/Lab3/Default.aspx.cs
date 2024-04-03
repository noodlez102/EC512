using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateAndDisplayPrimes();
            }
        }
        private void GenerateAndDisplayPrimes()
        {
            List<int> primes = GeneratePrimes(100);

            foreach (int prime in primes)
            {
                primeList.Items.Add(prime.ToString());
            }
        }

        private List<int> GeneratePrimes(int n)
        {
            List<int> primes = new List<int>();

            for (int i = 2; primes.Count < n; i++)
            {
                if (IsPrime(i))
                {
                    primes.Add(i);
                }
            }

            return primes;
        }

        private bool IsPrime(int num)
        {
            if (num <= 1)
                return false;

            if (num <= 3)
                return true;

            if (num % 2 == 0 || num % 3 == 0)
                return false;

            for (int i = 5; i * i <= num; i += 6)
            {
                if (num % i == 0 || num % (i + 2) == 0)
                    return false;
            }

            return true;
        }
    }
}

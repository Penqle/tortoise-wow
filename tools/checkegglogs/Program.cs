using MySqlConnector;



namespace checkegglogs
{
    internal class Program
    {
        static void Main(string[] args)
        {
            MySqlConnectionStringBuilder connectionStringBuilder = new MySqlConnectionStringBuilder();
            MySqlConnection conn = new MySqlConnection("server=127.0.0.1;uid=mangos;pwd=mangos;Database=char;Port=3307");
            conn.Open();

            var comme = new MySqlCommand("SELECT guid FROM characters", conn);

            HashSet<uint> allCharGuids = new HashSet<uint>();
            var readeree = comme.ExecuteReader();

            while (readeree.Read())
            {
                allCharGuids.Add((uint)readeree[0]);
            }
            readeree.Close();


            string sql = "SELECT playerGuid, COUNT(*) AS amount FROM character_egg_loot WHERE refunded = 0 GROUP BY playerGuid ORDER BY amount DESC";
            MySqlCommand comm = new MySqlCommand(sql, conn);



            Dictionary<uint, Int64> refundLogs = new Dictionary<uint, Int64>();
            var reader = comm.ExecuteReader();

            while (reader.Read())
            {
                refundLogs.Add((uint)reader["playerGuid"], (Int64)reader["amount"]);
            }
            reader.Close();

            var comm2 = new MySqlCommand("SELECT guid, COUNT(*) AS amount FROM shop_logs WHERE item = 92010 AND refunded = 1 AND realm_id = 1 GROUP BY guid ORDER BY amount DESC"
                , conn);

            Dictionary<uint, Int64> eggsRefunded = new Dictionary<uint, Int64>();

            var reader2 = comm2.ExecuteReader();

            while (reader2.Read())
            {
                eggsRefunded.Add((uint)reader2["guid"], (Int64)reader2["amount"]);
            }
            reader2.Close();

            foreach(var pair in eggsRefunded)
            {

                if (refundLogs.ContainsKey(pair.Key))
                {
                    if (Math.Abs(pair.Value - refundLogs[pair.Key]) > 0)
                    {
                        bool hasChar = allCharGuids.Contains(pair.Key);
                        Console.WriteLine($"Cheater {pair.Key} / {Math.Abs(pair.Value - refundLogs[pair.Key])}. {hasChar}.");
                    }
                }
                else
                {
                    if (pair.Value > 1)
                        Console.WriteLine($"All eggs refunded on {pair.Key} while {pair.Value} refunds in shop_logs.");
                }
            }
        }
    }
}

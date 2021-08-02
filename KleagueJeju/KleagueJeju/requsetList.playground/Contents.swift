import UIKit


struct LeagueSchedule: Codable {
    
    let data: dataInfo
    
    struct dataInfo: Codable {
        let scheduleList: [ScheduleList]
    }

    struct ScheduleList: Codable {
        let gameDate: String
        let gameTime: String
        let homeTeam: String
        let homeTeamName: String
        let awayTeam: String
        let awayTeamName: String
        let fieldNameFull: String
        
    }

    
}

func LeagueScheduleApi(urlStr: String, paramText: [String: String], completion: @escaping (Bool, Any) -> ()) {
    
    guard let url = URL(string: urlStr) else {
        return
    }
    
    let paramData = try! JSONSerialization.data(withJSONObject: paramText, options: [])
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.httpBody = paramData
    
    request.addValue("application/json;charset=UTF-8", forHTTPHeaderField: "Content-Type")
    request.setValue(String(paramData.count), forHTTPHeaderField: "Content-Length")
    
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
        if let error = error {
            print(error)
            return
        }
        guard let httpResponse = response as? HTTPURLResponse else {
            return
        }
        
        guard httpResponse.statusCode == 200 else {
            return
        }
        guard let data = data else {
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let data = try decoder.decode(LeagueSchedule.self, from: data)
            completion(true, data)
        } catch {
            completion(false, error)
        }
        
    }
    task.resume()
    
}

let url = "https://www.kleague.com/getScheduleList.do"
let value = [
    "leagueId": "1",
    "teamId": "K04",
    "year": "2021",
    "month": "08",
    "ticketYn": ""
]

LeagueScheduleApi(urlStr: url, paramText: value) { success, data in
    print(data.self)
}

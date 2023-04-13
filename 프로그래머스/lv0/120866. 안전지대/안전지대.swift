import Foundation

var arr = [[Int]]()

func solution(_ board:[[Int]]) -> Int {
    var answer = 0
    arr = board
    
    for i in 0..<board.count {
        for j in 0..<board[i].count {
            if board[i][j] == 1 {
                bfs(i,j)
            }
        }
    }

    arr.forEach{$0.forEach {
        if $0 == 0 {
            answer += 1
        }
    }}
    
    return answer
}

func bfs(_ r: Int, _ c: Int) {
    let dx = [-1,-1,-1,0,0,1,1,1]
    let dy = [-1,0,1,-1,1,-1,0,1]
    
    for i in 0..<dx.count {
        let (nx, ny) = (r + dx[i], c + dy[i])
        if (0..<arr.count).contains(nx) && (0..<arr.count).contains(ny){
            arr[nx][ny] += 1
        }
    }
    
}

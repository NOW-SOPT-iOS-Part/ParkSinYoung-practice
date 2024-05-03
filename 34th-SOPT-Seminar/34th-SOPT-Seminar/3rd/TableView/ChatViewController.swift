//
//  ChatViewController.swift
//  34th-SOPT-Seminar
//
//  Created by 박신영 on 4/20/24.
//

import UIKit
import SnapKit


final class ChatViewController: UIViewController {
   
   private let chatList = ChatModel.dummy()
    private let tableView = UITableView(frame: .zero, style: .plain)
    
   override func viewDidLoad() {
      super.viewDidLoad()
      
      setLayout()
      setDelegate()
      register()
   }
    
    private func setLayout() { // -- 3번
        self.view.addSubview(tableView)
        
        tableView.snp.makeConstraints { $0.edges.equalToSuperview() }
    }
   
   private func register() {
      tableView.register(
         ChatTableViewCell.self,
         forCellReuseIdentifier: ChatTableViewCell.identifier
      )
   }
   
   private func setDelegate() {
           tableView.delegate = self
           tableView.dataSource = self
       }
}

extension ChatViewController: UITableViewDelegate, UITableViewDataSource {
   
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      return 72
   }
   
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return chatList.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(
         withIdentifier: ChatTableViewCell.identifier,
         for: indexPath) as? ChatTableViewCell else { return UITableViewCell() }
      cell.dataBind(chatList[indexPath.row])
      return cell
   }
   
}

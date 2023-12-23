//
//  MypageView.swift
//  Unite 2.0
//
//  Created by  on 2023/04/08.
//

import SwiftUI

struct MypageView: View {
    
    /*
    @AppStorage("Fs1mon1Key") var Fs1mon1 = 0
    @AppStorage("Fs1mon2Key") var Fs1mon2 = 0
    @AppStorage("Fs1mon3Key") var Fs1mon3 = 0
    @AppStorage("Fs1mon4Key") var Fs1mon4 = 0
    @AppStorage("Fs1mon5Key") var Fs1mon5 = 0
    @AppStorage("Fs1mon6Key") var Fs1mon6 = 0
    @AppStorage("Fs1tue1Key") var Fs1tue1 = 0
    @AppStorage("Fs1tue2Key") var Fs1tue2 = 0
    @AppStorage("Fs1tue3Key") var Fs1tue3 = 0
    @AppStorage("Fs1tue4Key") var Fs1tue4 = 0
    @AppStorage("Fs1tue5Key") var Fs1tue5 = 0
    @AppStorage("Fs1tue6Key") var Fs1tue6 = 0
    @AppStorage("Fs1wed1Key") var Fs1wed1 = 0
    @AppStorage("Fs1wed2Key") var Fs1wed2 = 0
    @AppStorage("Fs1wed3Key") var Fs1wed3 = 0
    @AppStorage("Fs1wed4Key") var Fs1wed4 = 0
    @AppStorage("Fs1wed5Key") var Fs1wed5 = 0
    @AppStorage("Fs1wed6Key") var Fs1wed6 = 0
    @AppStorage("Fs1thu1Key") var Fs1thu1 = 0
    @AppStorage("Fs1thu2Key") var Fs1thu2 = 0
    @AppStorage("Fs1thu3Key") var Fs1thu3 = 0
    @AppStorage("Fs1thu4Key") var Fs1thu4 = 0
    @AppStorage("Fs1thu5Key") var Fs1thu5 = 0
    @AppStorage("Fs1thu6Key") var Fs1thu6 = 0
    @AppStorage("Fs1fri1Key") var Fs1fri1 = 0
    @AppStorage("Fs1fri2Key") var Fs1fri2 = 0
    @AppStorage("Fs1fri3Key") var Fs1fri3 = 0
    @AppStorage("Fs1fri4Key") var Fs1fri4 = 0
    @AppStorage("Fs1fri5Key") var Fs1fri5 = 0
    @AppStorage("Fs1fri6Key") var Fs1fri6 = 0
    
    @AppStorage("Fs2mon1Key") var Fs2mon1 = 0
    @AppStorage("Fs2mon2Key") var Fs2mon2 = 0
    @AppStorage("Fs2mon3Key") var Fs2mon3 = 0
    @AppStorage("Fs2mon4Key") var Fs2mon4 = 0
    @AppStorage("Fs2mon5Key") var Fs2mon5 = 0
    @AppStorage("Fs2mon6Key") var Fs2mon6 = 0
    @AppStorage("Fs2tue1Key") var Fs2tue1 = 0
    @AppStorage("Fs2tue2Key") var Fs2tue2 = 0
    @AppStorage("Fs2tue3Key") var Fs2tue3 = 0
    @AppStorage("Fs2tue4Key") var Fs2tue4 = 0
    @AppStorage("Fs2tue5Key") var Fs2tue5 = 0
    @AppStorage("Fs2tue6Key") var Fs2tue6 = 0
    @AppStorage("Fs2wed1Key") var Fs2wed1 = 0
    @AppStorage("Fs2wed2Key") var Fs2wed2 = 0
    @AppStorage("Fs2wed3Key") var Fs2wed3 = 0
    @AppStorage("Fs2wed4Key") var Fs2wed4 = 0
    @AppStorage("Fs2wed5Key") var Fs2wed5 = 0
    @AppStorage("Fs2wed6Key") var Fs2wed6 = 0
    @AppStorage("Fs2thu1Key") var Fs2thu1 = 0
    @AppStorage("Fs2thu2Key") var Fs2thu2 = 0
    @AppStorage("Fs2thu3Key") var Fs2thu3 = 0
    @AppStorage("Fs2thu4Key") var Fs2thu4 = 0
    @AppStorage("Fs2thu5Key") var Fs2thu5 = 0
    @AppStorage("Fs2thu6Key") var Fs2thu6 = 0
    @AppStorage("Fs2fri1Key") var Fs2fri1 = 0
    @AppStorage("Fs2fri2Key") var Fs2fri2 = 0
    @AppStorage("Fs2fri3Key") var Fs2fri3 = 0
    @AppStorage("Fs2fri4Key") var Fs2fri4 = 0
    @AppStorage("Fs2fri5Key") var Fs2fri5 = 0
    @AppStorage("Fs2fri6Key") var Fs2fri6 = 0
    
    @AppStorage("Fa1mon1Key") var Fa1mon1 = 0
    @AppStorage("Fa1mon2Key") var Fa1mon2 = 0
    @AppStorage("Fa1mon3Key") var Fa1mon3 = 0
    @AppStorage("Fa1mon4Key") var Fa1mon4 = 0
    @AppStorage("Fa1mon5Key") var Fa1mon5 = 0
    @AppStorage("Fa1mon6Key") var Fa1mon6 = 0
    @AppStorage("Fa1tue1Key") var Fa1tue1 = 0
    @AppStorage("Fa1tue2Key") var Fa1tue2 = 0
    @AppStorage("Fa1tue3Key") var Fa1tue3 = 0
    @AppStorage("Fa1tue4Key") var Fa1tue4 = 0
    @AppStorage("Fa1tue5Key") var Fa1tue5 = 0
    @AppStorage("Fa1tue6Key") var Fa1tue6 = 0
    @AppStorage("Fa1wed1Key") var Fa1wed1 = 0
    @AppStorage("Fa1wed2Key") var Fa1wed2 = 0
    @AppStorage("Fa1wed3Key") var Fa1wed3 = 0
    @AppStorage("Fa1wed4Key") var Fa1wed4 = 0
    @AppStorage("Fa1wed5Key") var Fa1wed5 = 0
    @AppStorage("Fa1wed6Key") var Fa1wed6 = 0
    @AppStorage("Fa1thu1Key") var Fa1thu1 = 0
    @AppStorage("Fa1thu2Key") var Fa1thu2 = 0
    @AppStorage("Fa1thu3Key") var Fa1thu3 = 0
    @AppStorage("Fa1thu4Key") var Fa1thu4 = 0
    @AppStorage("Fa1thu5Key") var Fa1thu5 = 0
    @AppStorage("Fa1thu6Key") var Fa1thu6 = 0
    @AppStorage("Fa1fri1Key") var Fa1fri1 = 0
    @AppStorage("Fa1fri2Key") var Fa1fri2 = 0
    @AppStorage("Fa1fri3Key") var Fa1fri3 = 0
    @AppStorage("Fa1fri4Key") var Fa1fri4 = 0
    @AppStorage("Fa1fri5Key") var Fa1fri5 = 0
    @AppStorage("Fa1fri6Key") var Fa1fri6 = 0
    
    @AppStorage("Fa2mon1Key") var Fa2mon1 = 0
    @AppStorage("Fa2mon2Key") var Fa2mon2 = 0
    @AppStorage("Fa2mon3Key") var Fa2mon3 = 0
    @AppStorage("Fa2mon4Key") var Fa2mon4 = 0
    @AppStorage("Fa2mon5Key") var Fa2mon5 = 0
    @AppStorage("Fa2mon6Key") var Fa2mon6 = 0
    @AppStorage("Fa2tue1Key") var Fa2tue1 = 0
    @AppStorage("Fa2tue2Key") var Fa2tue2 = 0
    @AppStorage("Fa2tue3Key") var Fa2tue3 = 0
    @AppStorage("Fa2tue4Key") var Fa2tue4 = 0
    @AppStorage("Fa2tue5Key") var Fa2tue5 = 0
    @AppStorage("Fa2tue6Key") var Fa2tue6 = 0
    @AppStorage("Fa2wed1Key") var Fa2wed1 = 0
    @AppStorage("Fa2wed2Key") var Fa2wed2 = 0
    @AppStorage("Fa2wed3Key") var Fa2wed3 = 0
    @AppStorage("Fa2wed4Key") var Fa2wed4 = 0
    @AppStorage("Fa2wed5Key") var Fa2wed5 = 0
    @AppStorage("Fa2wed6Key") var Fa2wed6 = 0
    @AppStorage("Fa2thu1Key") var Fa2thu1 = 0
    @AppStorage("Fa2thu2Key") var Fa2thu2 = 0
    @AppStorage("Fa2thu3Key") var Fa2thu3 = 0
    @AppStorage("Fa2thu4Key") var Fa2thu4 = 0
    @AppStorage("Fa2thu5Key") var Fa2thu5 = 0
    @AppStorage("Fa2thu6Key") var Fa2thu6 = 0
    @AppStorage("Fa2fri1Key") var Fa2fri1 = 0
    @AppStorage("Fa2fri2Key") var Fa2fri2 = 0
    @AppStorage("Fa2fri3Key") var Fa2fri3 = 0
    @AppStorage("Fa2fri4Key") var Fa2fri4 = 0
    @AppStorage("Fa2fri5Key") var Fa2fri5 = 0
    @AppStorage("Fa2fri6Key") var Fa2fri6 = 0
    
    @AppStorage("Ss1mon1Key") var Ss1mon1 = 0
    @AppStorage("Ss1mon2Key") var Ss1mon2 = 0
    @AppStorage("Ss1mon3Key") var Ss1mon3 = 0
    @AppStorage("Ss1mon4Key") var Ss1mon4 = 0
    @AppStorage("Ss1mon5Key") var Ss1mon5 = 0
    @AppStorage("Ss1mon6Key") var Ss1mon6 = 0
    @AppStorage("Ss1tue1Key") var Ss1tue1 = 0
    @AppStorage("Ss1tue2Key") var Ss1tue2 = 0
    @AppStorage("Ss1tue3Key") var Ss1tue3 = 0
    @AppStorage("Ss1tue4Key") var Ss1tue4 = 0
    @AppStorage("Ss1tue5Key") var Ss1tue5 = 0
    @AppStorage("Ss1tue6Key") var Ss1tue6 = 0
    @AppStorage("Ss1wed1Key") var Ss1wed1 = 0
    @AppStorage("Ss1wed2Key") var Ss1wed2 = 0
    @AppStorage("Ss1wed3Key") var Ss1wed3 = 0
    @AppStorage("Ss1wed4Key") var Ss1wed4 = 0
    @AppStorage("Ss1wed5Key") var Ss1wed5 = 0
    @AppStorage("Ss1wed6Key") var Ss1wed6 = 0
    @AppStorage("Ss1thu1Key") var Ss1thu1 = 0
    @AppStorage("Ss1thu2Key") var Ss1thu2 = 0
    @AppStorage("Ss1thu3Key") var Ss1thu3 = 0
    @AppStorage("Ss1thu4Key") var Ss1thu4 = 0
    @AppStorage("Ss1thu5Key") var Ss1thu5 = 0
    @AppStorage("Ss1thu6Key") var Ss1thu6 = 0
    @AppStorage("Ss1fri1Key") var Ss1fri1 = 0
    @AppStorage("Ss1fri2Key") var Ss1fri2 = 0
    @AppStorage("Ss1fri3Key") var Ss1fri3 = 0
    @AppStorage("Ss1fri4Key") var Ss1fri4 = 0
    @AppStorage("Ss1fri5Key") var Ss1fri5 = 0
    @AppStorage("Ss1fri6Key") var Ss1fri6 = 0
    
    @AppStorage("Ss2mon1Key") var Ss2mon1 = 0
    @AppStorage("Ss2mon2Key") var Ss2mon2 = 0
    @AppStorage("Ss2mon3Key") var Ss2mon3 = 0
    @AppStorage("Ss2mon4Key") var Ss2mon4 = 0
    @AppStorage("Ss2mon5Key") var Ss2mon5 = 0
    @AppStorage("Ss2mon6Key") var Ss2mon6 = 0
    @AppStorage("Ss2tue1Key") var Ss2tue1 = 0
    @AppStorage("Ss2tue2Key") var Ss2tue2 = 0
    @AppStorage("Ss2tue3Key") var Ss2tue3 = 0
    @AppStorage("Ss2tue4Key") var Ss2tue4 = 0
    @AppStorage("Ss2tue5Key") var Ss2tue5 = 0
    @AppStorage("Ss2tue6Key") var Ss2tue6 = 0
    @AppStorage("Ss2wed1Key") var Ss2wed1 = 0
    @AppStorage("Ss2wed2Key") var Ss2wed2 = 0
    @AppStorage("Ss2wed3Key") var Ss2wed3 = 0
    @AppStorage("Ss2wed4Key") var Ss2wed4 = 0
    @AppStorage("Ss2wed5Key") var Ss2wed5 = 0
    @AppStorage("Ss2wed6Key") var Ss2wed6 = 0
    @AppStorage("Ss2thu1Key") var Ss2thu1 = 0
    @AppStorage("Ss2thu2Key") var Ss2thu2 = 0
    @AppStorage("Ss2thu3Key") var Ss2thu3 = 0
    @AppStorage("Ss2thu4Key") var Ss2thu4 = 0
    @AppStorage("Ss2thu5Key") var Ss2thu5 = 0
    @AppStorage("Ss2thu6Key") var Ss2thu6 = 0
    @AppStorage("Ss2fri1Key") var Ss2fri1 = 0
    @AppStorage("Ss2fri2Key") var Ss2fri2 = 0
    @AppStorage("Ss2fri3Key") var Ss2fri3 = 0
    @AppStorage("Ss2fri4Key") var Ss2fri4 = 0
    @AppStorage("Ss2fri5Key") var Ss2fri5 = 0
    @AppStorage("Ss2fri6Key") var Ss2fri6 = 0
    */
    
    @AppStorage("usernameKey") var username = ""
    @AppStorage("FFLKey") var FFL = 1
    @AppStorage("SFLKey") var SFL = 1
    @AppStorage("EyearKey") var Eyear = 1
    @AppStorage("departmentKey") var department = 1
    @AppStorage("classNKey") var classN = 0
    
    
    var body: some View {
        
        
        NavigationStack {
                List {


                    HStack {
                        Text("入学年")
                        
                        Picker(selection: $Eyear, label: Text("")) {
                            Text("未選択").tag(1)
                            Text("2022").tag(2)
                            Text("2023").tag(3)
                        }
                    }
                    
                    HStack {
                        Text("所属")
                        
                        Picker(selection: $department, label: Text("")) {
                            Text("未選択").tag(1)
                            Text("文科一類").tag(2)
                            Text("文科二類").tag(3)
                            Text("文科三類").tag(4)
                            Text("理科一類").tag(5)
                            Text("理科二類").tag(6)
                            Text("理科三類").tag(7)
                            Text("その他").tag(8)
                        }
                    }
                    
                    HStack {
                        Text("既修外国語")
                        
                        Spacer()
                            .frame(width: 20.0)
                        
                        Picker(selection: $SFL, label: Text("")) {
                            Text("未選択").tag(1)
                            Text("英語").tag(2)
                            Text("スペイン語").tag(3)
                            Text("中国語").tag(4)
                            Text("フランス語").tag(5)
                            Text("ドイツ語").tag(6)
                            Text("イタリア語").tag(7)
                            Text("ロシア語").tag(8)
                            Text("韓国朝鮮語").tag(9)
                            Text("日本語").tag(10)
                        }
                        
                    }
                    
                    
                    HStack {
                        Text("初修外国語")
                        
                        Spacer()
                            .frame(width: 20.0)
                        
                        Picker(selection: $FFL, label: Text("")) {
                            Text("未選択").tag(1)
                            Text("スペイン語").tag(2)
                            Text("中国語").tag(3)
                            Text("フランス語").tag(4)
                            Text("ドイツ語").tag(5)
                            Text("イタリア語").tag(6)
                            Text("ロシア語").tag(7)
                            Text("韓国朝鮮語").tag(8)
                        }
                        
                    }
                    
                }
                .listStyle(PlainListStyle())
                .navigationBarTitle("マイページ", displayMode: .inline)
        }
    }
}


struct MypageView_Previews: PreviewProvider {
    static var previews: some View {
        MypageView()
    }
}

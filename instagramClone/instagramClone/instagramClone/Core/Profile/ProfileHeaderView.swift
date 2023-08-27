//
//  ProfileHeaderView.swift
//  instagramClone
//
//  Created by Brandon Fabian Juarez on 8/15/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 7) {
            //pic and stats
            HStack {
                Image(user.profileImageUrl ?? "")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: "15", title: "Posts")
                    
                    UserStatView(value: "3.8M", title: "Followers")
                    
                    UserStatView(value: "25", title: "Following ")
                    
                }
                
            }
            .padding(.horizontal)
            
            //name and bio
            //alignment after vstack aligns all lines at same start
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullName {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            //action button
            Button  {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius:6)
                            .stroke(Color(.gray), lineWidth: 1)
                    )
            }

            Divider()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[0])
    }
}

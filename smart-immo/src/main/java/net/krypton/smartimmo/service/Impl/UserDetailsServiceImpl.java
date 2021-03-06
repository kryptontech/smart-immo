package net.krypton.smartimmo.service.Impl;

import java.util.ArrayList;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.krypton.smartimmo.entities.Admin;
import  net.krypton.smartimmo.entities.User;
import  net.krypton.smartimmo.service.AdminService;
import  net.krypton.smartimmo.service.UserService;
@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserService UserService;

	@Autowired
	private AdminService AdminService;

	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {

		User user = UserService.consulterUserByName(username);

		// additional information on the security object
		Admin pr = user.getAdmin();

		if (pr != null) {
			
			
			String password = user.getMdpUser();
			boolean enabled = pr.isStatus();
			boolean accountNonExpired = pr.isStatus();
			boolean credentialsNonExpired = pr.isStatus();
			boolean accountNonLocked = pr.isStatus();

			// TODO Auto-generated method stub

			// Let's populate user roles
			Collection<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
			for (Admin pr1 : AdminService.consulterAdmins()) {
				authorities.add(new GrantedAuthorityImpl(pr1.getTypeUser()));
			}

			//Now let's create Spring Security User object
			org.springframework.security.core.userdetails.User securityUser = new 
					org.springframework.security.core.userdetails.User(username, password, enabled, accountNonExpired, credentialsNonExpired, accountNonLocked, authorities);
			return securityUser;
		} else {
			throw new UsernameNotFoundException("User Not Found!!!");
		}
	}

}

package ru.innopolis.nikn.models.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.innopolis.nikn.models.dao.AuthorityDAO;
import ru.innopolis.nikn.models.dao.ProfileDAO;
import ru.innopolis.nikn.models.dao.UserDAO;
import ru.innopolis.nikn.models.entities.Authority;
import ru.innopolis.nikn.models.entities.Profile;
import ru.innopolis.nikn.models.entities.User;
import ru.innopolis.nikn.models.models.ProfileModel;
import ru.innopolis.nikn.models.models.UserModel;

/**
 * Created by Nikolay on 10.12.2016.
 */
@Service
public class UserServiceImpl  extends BaseServiceImpl implements UserService{
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private ProfileDAO profileDAO;
    @Autowired
    private AuthorityDAO authorityDAO;

    @Override
    public void registerAction(UserModel userModel, ProfileModel profileModel) {
        User user = mapper.map(userModel, User.class);
        user.setAuthority((Authority) authorityDAO.getById(1, Authority.class));
        userDAO.add(user);
        Profile profile = mapper.map(profileModel, Profile.class);
        profile.setUser(user);
        profileDAO.add(profile);
    }
}

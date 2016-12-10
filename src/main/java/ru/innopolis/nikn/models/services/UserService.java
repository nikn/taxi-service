package ru.innopolis.nikn.models.services;

import ru.innopolis.nikn.models.models.ProfileModel;
import ru.innopolis.nikn.models.models.UserModel;

/**
 * Created by Nikolay on 10.12.2016.
 */

public interface UserService {

    void registerAction(UserModel userModel, ProfileModel profileModel);
}

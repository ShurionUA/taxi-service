package taxi.service;

import java.util.Optional;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.exception.AuthenticationException;
import taxi.lib.Inject;
import taxi.lib.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Logger logger = LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        Optional<Driver> driver = driverService.getByLogin(login);
        if (driver.isEmpty() || !driver.get().getPassword().equals(password)) {
            System.out.println("Login or password is incorrect. Login: {}" + login);
            logger.info("Login or password is incorrect. Login: {}", login);
            throw new AuthenticationException("Login or password are incorrect.");
        }
        System.out.println("User logged. Login: {}" + login);
        logger.info("User logged. Login: {}", login);
        return driver.get();
    }
}

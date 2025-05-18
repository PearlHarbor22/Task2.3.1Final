package web.service;
import org.springframework.stereotype.Service;
import web.model.Car;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class CarServiceImpl implements CarService {
    private final List<Car> carList = Arrays.asList(
            new Car("LADA", "Black", 2020),
            new Car("GAZ", "Orange", 2000),
            new Car("VAZ", "Red", 1986),
            new Car("Toyota", "Blue", 2018),
            new Car("Ford", "Green", 2017)
    );

    public List<Car> getCars(Integer count) {
        if (count == null || count >= 5) {
            return carList;
        }
        return carList.stream().limit(count).collect(Collectors.toList());
    }
}

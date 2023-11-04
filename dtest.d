import std.random : uniform01;
import std.stdio : File, writeln;
import std.conv : to;
import std.math : sqrt, sin, cos, PI;

void main(string[] argv) {
    int R = argv[1].to!int;
    auto f = File("ddata.csv", "w");

    foreach(_; 0..1000) {
        auto r = R * sqrt(uniform01());
        auto theta = uniform01() * 2 * PI;
        auto x = r * cos(theta);
        auto y = r * sin(theta);
        f.writeln(x,",",y);
    }
    f.close();
}

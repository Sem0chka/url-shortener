package config

type Config struct {
	Env string `yaml:"env" env-default:"prod" env-require:"true"`
}

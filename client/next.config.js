/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  swcMinify: true,
  images: {
    domains: ["gateway.pinata.cloud"],
    domains: ["ipfs.io"],
  },
};

const withPWA = require("next-pwa")({
  dest: "public",
  register: true,
  maximumFileSizeToCacheInBytes: 100000000,
});

module.exports = withPWA(nextConfig);

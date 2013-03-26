Pod::Spec.new do |s|
  s.name         = "AFCache"
  s.version      = "0.0.1"
  s.summary      = "AFCache is an HTTP cache for iOS and OSX seeking towards full RFC2616 compliance."
  s.description  = <<-DESC
                    AFCache is an HTTP cache for iOS and OSX seeking towards full RFC2616 compliance.
                    The cache was initially written because on iOS, NSURLCache ignores NSURLCacheStorageAllowed
                    and instead treats it as NSURLCacheStorageAllowedInMemoryOnly which is pretty useless for a persistent cache.
                   DESC
  s.homepage     = "https://github.com/artifacts/AFCache"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-TXT
                      Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0

                      Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
                     TXT
                     }
  s.author       = { "Michael Markowski" => "m.markowski@artifacts.de" }
  s.source       = { :git => "https://github.com/artifacts/AFCache.git", :commit => "ca5ca130dbb097100b9501cad59d877c9806c67d" }

  # Migth need to extract third party as dependencies
  s.ios.source_files =  'src/iOS', 'src/shared', 'src/3rdparty/**/*.{h,m}'
  s.osx.source_files =  'src/OSX', 'src/shared', 'src/3rdparty/**/*.{h,m}'
  s.framework        =  'SystemConfiguration'
  s.library          =  'z'
end

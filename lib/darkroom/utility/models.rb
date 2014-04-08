module Darkroom; end

class Darkroom::Model; end
class Darkroom::Model::Account        < Darkroom::Model; end
class Darkroom::Model::Album          < Darkroom::Model; end
class Darkroom::Model::Comment        < Darkroom::Model; end
class Darkroom::Model::Image          < Darkroom::Model; end
class Darkroom::Model::Vote           < Darkroom::Model; end

module Darkroom::Model::Gallery; end
class Darkroom::Model::Gallery::Album   < Darkroom::Model; end
class Darkroom::Model::Gallery::Image   < Darkroom::Model; end
class Darkroom::Model::Gallery::Profile < Darkroom::Model; end

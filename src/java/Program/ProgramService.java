
package Program;

import java.util.List;
import javax.servlet.http.Part;
import shared.FileUploader;

public class ProgramService {
    private ProgramDAO dao = new ProgramDAO();
    
    public void registerProgram(Program program, List<Part> programImageParts, String path) {
        dao.addProgram(program);

        FileUploader.uploadImages(programImageParts, program.getProgramName(), path);
    }
}
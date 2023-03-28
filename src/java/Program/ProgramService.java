
package Program;

import java.util.List;
import javax.servlet.http.Part;
import shared.FileUploader;

public class ProgramService {
    private ProgramDAO dao = new ProgramDAO();
    
    public int registerProgram(Program program, List<Part> programImageParts, String path) {
        int programId = dao.addProgram(program);

        List<String> imgList = FileUploader.uploadImages(programImageParts, program.getProgramName(), path);

        return programId;
    }

    public Program getProgramById(int programId) {
        return dao.getProgram(programId);
    }
}
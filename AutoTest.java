import java.io.*;
import java.util.*;
import java.util.concurrent.TimeUnit;

public class AutoTest{
    public static File[] getAllFiles(String path){
        File parentFile = new File(path);
        if(!parentFile.isDirectory()){
            System.out.println("Not a directory");
            System.exit(1);
        }
        FileFilter ff = new FileFilter(){
            @Override
            public boolean accept(File file){
                if(file.getName().startsWith(".")||!file.isDirectory())return false;
                return true;
            }
        };
        return parentFile.listFiles(ff);
    }
    public static void main(String[] args) throws InterruptedException,IOException{
        String src = (args.length==0)?".":args[0];
        File[] files = getAllFiles(src);

        // for(File f: files){
        //     File testFile = new File(f.getAbsolutePath()+"/test/"+f.getName().replaceAll("-","_")+"_test.dart");
        //     unSkipAllTests(testFile);
        // }

        for(File f: files){
            // Process proc = Runtime.getRuntime()
            // .exec("pub get", null, new File(f.getAbsolutePath()));
            // printResult(proc);
            Process proc2 = Runtime.getRuntime().exec("pub run test",null,new File(f.getAbsolutePath()));
            printResult(proc2,f.getAbsolutePath());
        }
        
    }
    public static void unSkipAllTests(File file) throws IOException {
        ArrayList<String> store = new ArrayList<>();
        BufferedReader br = new BufferedReader(new FileReader(file));
        BufferedWriter bw;
        String line;
        while((line = br.readLine())!=null){
            if(line.contains("skip: true")){
                line = line.replace("skip: true", "skip: false");
            }
            store.add(line);
        }
        bw = new BufferedWriter(new FileWriter(file));
        for(String val: store){
            bw.write(val+"\n");
        }
        br.close();
        bw.close();
    }
    public static void printResult(Process proc,String path)throws IOException,InterruptedException{
        if(!proc.waitFor(10, TimeUnit.SECONDS)){
            return ;
        };
        File pathFile = new File(path);
        File logFile = new File(pathFile.getParent()+"/log_file.txt");
        BufferedReader br = new BufferedReader(new InputStreamReader(proc.getInputStream()));
        BufferedWriter bw = new BufferedWriter(new FileWriter(logFile,true));
        String line ;
        String remark = "All Tests passed";
        bw.write(pathFile.getName()+"\n");
        while((line = br.readLine())!=null){
            System.out.println(line);
            if(line.contains("tests failed.")){
                remark = "Some tests failed.";
                break;
            }
        }
        bw.write("\t"+remark+"\n");
        br.close();
        bw.close();
        proc.destroy();
    }
}
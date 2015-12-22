package cn.fam.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DbUtil {
	// ���ݿ��ַ
    private static String dbUrl="jdbc:mysql://localhost:3306/newtrain";
    // �û���
    private static String dbUserName="root";
    // ����
    private static String dbPassword="lcp8090";
    // ��������
    private static String jdbcName="com.mysql.jdbc.Driver";
    
    /*
     * ��ȡ���ݿ�����
     */
    public Connection getCon()throws Exception{
        Class.forName(jdbcName);
        Connection con=DriverManager.getConnection(dbUrl, dbUserName, dbPassword);
        return con;
    }
    
    /*
     * �ر�����
     */
    public void close(PreparedStatement pstmt,Connection con)throws Exception{
        if(pstmt!=null){
            pstmt.close();
            if(con!=null){
                con.close();
            }
        }
    }
}
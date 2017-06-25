package springbook.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import springbook.user.domain.User;
import springbook.user.exception.DuplicatedUserIdException;

public class UserDao {		
	private JdbcTemplate jdbcTemplate;
	private RowMapper<User> userMapper = new RowMapper<User>() {
		@Override
		public User mapRow(ResultSet rs, int rowNum) throws SQLException {
			User user = new User();
			user.setId(rs.getString("id"));
			user.setName(rs.getString("name"));
			user.setPassword(rs.getString("password"));
			return user;
		}
	};
	
	
	public void setDataSource(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
			
	public void add(final User user) throws DuplicatedUserIdException {
		try {
			this.jdbcTemplate.update("insert into users(id, name, password) values(?,?,?)",
					user.getId(), user.getName(), user.getPassword() );
		}
		catch(DuplicateKeyException e) {
			// 로그를 남기는 등의 필요한 작업
			// 예외를 전환할때는 원인이 되는 예외를 중첩하는 것이 좋음
			throw new DuplicatedUserIdException(e);
		}
	}
		
	
	public User get(String id) {
		return jdbcTemplate.queryForObject("select * from users where id = ?",new Object[] {id},userMapper);		
	}
		
	public List<User> getAll() {
		return this.jdbcTemplate.query("select * from users order by id", userMapper);
	}
	
	public void deleteAll() throws SQLException {		
//		this.jdbcTemplate.update( new PreparedStatementCreator() {
//			@Override
//			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {				
//				return con.prepareStatement("delete from users");
//			}
//			
//		});		
		this.jdbcTemplate.update("delete from users");
	}
		
	public int getCount() {
//		return this.jdbcTemplate.query(
//			new PreparedStatementCreator() {
//				@Override
//				public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
//					return con.prepareStatement("select count(*) from users");
//				}
//			}, new ResultSetExtractor<Integer>() {
//				@Override
//				public Integer extractData(ResultSet rs) throws SQLException, DataAccessException {
//					rs.next();
//					return rs.getInt(1);
//				}
//		});		
		return this.jdbcTemplate.queryForInt("select count(*) from users");		
	}
}
